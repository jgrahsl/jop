/*
  This file is part of JOP, the Java Optimized Processor
    see <http://www.jopdesign.com/>

  Copyright (C) 2008-2011, Martin Schoeberl (martin@jopdesign.com)

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

package javax.safetycritical;

import static javax.safetycritical.annotate.Level.LEVEL_1;

import javax.realtime.AperiodicParameters;
import javax.realtime.PriorityParameters;
import javax.safetycritical.annotate.MemoryAreaEncloses;
import javax.safetycritical.annotate.SCJAllowed;
import javax.safetycritical.annotate.SCJRestricted;

import static javax.safetycritical.annotate.Phase.INITIALIZATION;

/**
 * @author Martin Schoeberl
 * 
 */
@SCJAllowed(LEVEL_1)
public abstract class AperiodicEventHandler extends ManagedEventHandler {

	@MemoryAreaEncloses(inner = { "this", "this", "this", "this" }, outer = {
			"priority", "release_info", "mem_info", "event" })
	@SCJAllowed(LEVEL_1)
	@SCJRestricted(phase = INITIALIZATION)
	public AperiodicEventHandler(PriorityParameters priority,
			AperiodicParameters release, StorageParameters scp,
			AperiodicEvent event) {
		super(null, null, null, null);
	}

	@MemoryAreaEncloses(inner = { "this", "this", "this", "this", "this" }, outer = {
			"priority", "release_info", "scp", "event", "name" })
	@SCJAllowed(LEVEL_1)
	@SCJRestricted(phase = INITIALIZATION)
	public AperiodicEventHandler(PriorityParameters priority,
			AperiodicParameters release, StorageParameters scp,
			AperiodicEvent event, String name) {
		super(null, null, null, null);
	}

	@MemoryAreaEncloses(inner = { "this", "this", "this", "this" }, outer = {
			"priority", "release_info", "scp", "events" })
	@SCJAllowed(LEVEL_1)
	@SCJRestricted(phase = INITIALIZATION)
	public AperiodicEventHandler(PriorityParameters priority,
			AperiodicParameters release, StorageParameters scp,
			AperiodicEvent[] events) {
		super(null, null, null, null);
	}

	@MemoryAreaEncloses(inner = { "this", "this", "this", "this", "this" }, outer = {
			"priority", "release_info", "scp", "events", "name" })
	@SCJAllowed(LEVEL_1)
	@SCJRestricted(phase = INITIALIZATION)
	public AperiodicEventHandler(PriorityParameters priority,
			AperiodicParameters release, StorageParameters scp,
			AperiodicEvent[] events, String name) {
		super(null, null, null, null);
	}

	@Override
	@SCJAllowed
	@SCJRestricted(phase = INITIALIZATION)
	public final void register() {
	}

	/**
	 * This method is concrete in the RTSJ superclass, but now it is abstract.
	 */
	public abstract void handleAsyncEvent();

	/**
	 * An internal method to unblock the handler.
	 */
	void unblock() {
		// TODO Auto-generated method stub
	}
}
